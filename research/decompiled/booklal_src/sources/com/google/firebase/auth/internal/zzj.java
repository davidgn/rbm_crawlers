package com.google.firebase.auth.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2.dex */
public final class zzj {
    private static final zzj zza = new zzj();

    private zzj() {
    }

    public static zzj zzb() {
        return zza;
    }

    private static void zzf(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str : sharedPreferences.getAll().keySet()) {
            edit.remove(str);
        }
        edit.apply();
    }

    private static final SharedPreferences zzg(Context context, String str) {
        return context.getSharedPreferences("com.google.firebase.auth.internal.browserSignInSessionStore." + str, 0);
    }

    public final synchronized zzi zza(Context context, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences zzg = zzg(context, str);
        String str3 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".SESSION_ID";
        String str4 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".OPERATION";
        String str5 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".PROVIDER_ID";
        String str6 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".FIREBASE_APP_NAME";
        String string = zzg.getString(str3, null);
        String string2 = zzg.getString(str4, null);
        String string3 = zzg.getString(str5, null);
        String string4 = zzg.getString("com.google.firebase.auth.api.gms.config.tenant.id", null);
        String string5 = zzg.getString(str6, null);
        SharedPreferences.Editor edit = zzg.edit();
        edit.remove(str3);
        edit.remove(str4);
        edit.remove(str5);
        edit.remove(str6);
        edit.apply();
        if (string == null || string2 == null || string3 == null) {
            return null;
        }
        return new zzi(string, string2, string3, string4, string5);
    }

    public final synchronized String zzc(Context context, String str, String str2) {
        String string;
        String string2;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences zzg = zzg(context, str);
        String str3 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".OPERATION";
        string = zzg.getString(str3, null);
        String str4 = "com.google.firebase.auth.internal.EVENT_ID." + str2 + ".FIREBASE_APP_NAME";
        string2 = zzg.getString(str4, null);
        SharedPreferences.Editor edit = zzg.edit();
        edit.remove(str3);
        edit.remove(str4);
        edit.apply();
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return string2;
    }

    public final synchronized void zzd(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotEmpty(str7);
        SharedPreferences zzg = zzg(context, str);
        zzf(zzg);
        SharedPreferences.Editor edit = zzg.edit();
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".SESSION_ID", str3);
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".OPERATION", str4);
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".PROVIDER_ID", str5);
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".FIREBASE_APP_NAME", str7);
        edit.putString("com.google.firebase.auth.api.gms.config.tenant.id", str6);
        edit.apply();
    }

    public final synchronized void zze(Context context, String str, String str2, String str3, String str4) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        SharedPreferences zzg = zzg(context, str);
        zzf(zzg);
        SharedPreferences.Editor edit = zzg.edit();
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".OPERATION", "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA");
        edit.putString("com.google.firebase.auth.internal.EVENT_ID." + str2 + ".FIREBASE_APP_NAME", str4);
        edit.apply();
    }
}
