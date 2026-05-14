<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\WebsiteSetting;
use App\Models\Branch;
use App\Models\SocialMedia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Cache;

class SettingController extends Controller
{
    public function index()
    {
        $settings = WebsiteSetting::all()->pluck('value', 'key');
        $branches = Branch::all();
        $socials = SocialMedia::all();

        return view('admin.settings.index', compact('settings', 'branches', 'socials'));
    }

    public function updateIdentity(Request $request)
    {
        $data = $request->validate([
            'site_name' => 'nullable|string',
            'site_logo' => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'whatsapp' => 'nullable|string',
            'email' => 'nullable|email',
            'address' => 'nullable|string',
            'maps_iframe' => 'nullable|string',
        ]);

        if ($request->hasFile('site_logo')) {
            // Delete old logo if exists
            $oldLogo = WebsiteSetting::get('site_logo');
            if ($oldLogo && Storage::disk('public')->exists($oldLogo)) {
                Storage::disk('public')->delete($oldLogo);
            }

            $path = $request->file('site_logo')->store('settings', 'public');
            WebsiteSetting::set('site_logo', $path);
        }

        foreach ($data as $key => $value) {
            if ($key === 'site_logo') continue;
            WebsiteSetting::set($key, $value);
        }

        Cache::forget('web_settings');

        return back()->with('success', 'Identitas website berhasil diperbarui.');
    }

    public function deleteLogo()
    {
        $oldLogo = WebsiteSetting::get('site_logo');
        if ($oldLogo && Storage::disk('public')->exists($oldLogo)) {
            Storage::disk('public')->delete($oldLogo);
        }

        WebsiteSetting::set('site_logo', null);
        Cache::forget('web_settings');

        return back()->with('success', 'Logo website berhasil dihapus.');
    }

    // --- Branch Methods ---
    public function storeBranch(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'address' => 'required|string',
            'phone' => 'nullable|string',
            'maps_url' => 'nullable|string',
        ]);

        Branch::create($data);
        Cache::forget('web_branches');
        return back()->with('success', 'Cabang baru berhasil ditambahkan.');
    }

    public function updateBranch(Request $request, Branch $branch)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'address' => 'required|string',
            'phone' => 'nullable|string',
            'maps_url' => 'nullable|string',
        ]);

        $branch->update($data);
        Cache::forget('web_branches');
        return back()->with('success', 'Data cabang berhasil diperbarui.');
    }

    public function destroyBranch(Branch $branch)
    {
        $branch->delete();
        Cache::forget('web_branches');
        return back()->with('success', 'Cabang berhasil dihapus.');
    }

    // --- Social Media Methods ---
    public function storeSocial(Request $request)
    {
        $data = $request->validate([
            'platform' => 'required|string',
            'url' => 'required|url',
        ]);

        SocialMedia::create($data);
        Cache::forget('web_socials');
        return back()->with('success', 'Media sosial berhasil ditambahkan.');
    }

    public function updateSocial(Request $request, SocialMedia $social)
    {
        $data = $request->validate([
            'platform' => 'required|string',
            'url' => 'required|url',
        ]);

        $social->update($data);
        Cache::forget('web_socials');
        return back()->with('success', 'Media sosial berhasil diperbarui.');
    }

    public function destroySocial(SocialMedia $social)
    {
        $social->delete();
        Cache::forget('web_socials');
        return back()->with('success', 'Media sosial berhasil dihapus.');
    }
}
