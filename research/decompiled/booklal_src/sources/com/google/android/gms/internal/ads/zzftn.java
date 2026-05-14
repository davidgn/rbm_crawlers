package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzftn {
    private final zzftz zza;
    private final WebView zzb;
    private final List zzc = new ArrayList();
    private final Map zzd = new HashMap();
    private final String zze;
    private final String zzf;
    private final zzfto zzg;

    private zzftn(zzftz zzftzVar, WebView webView, String str, List list, String str2, String str3, zzfto zzftoVar) {
        this.zza = zzftzVar;
        this.zzb = webView;
        this.zzg = zzftoVar;
        this.zzf = str2;
        this.zze = str3;
    }

    public static zzftn zza(zzftz zzftzVar, WebView webView, String str, String str2) {
        if (str2 != null) {
            zzfvj.zzd(str2, UserVerificationMethods.USER_VERIFY_HANDPRINT, "CustomReferenceData is greater than 256 characters");
        }
        return new zzftn(zzftzVar, webView, null, null, str, str2, zzfto.HTML);
    }

    public static zzftn zzb(zzftz zzftzVar, WebView webView, String str, String str2) {
        zzfvj.zzd("", UserVerificationMethods.USER_VERIFY_HANDPRINT, "CustomReferenceData is greater than 256 characters");
        return new zzftn(zzftzVar, webView, null, null, str, "", zzfto.JAVASCRIPT);
    }

    public final zzftz zzc() {
        return this.zza;
    }

    public final List zzd() {
        return Collections.unmodifiableList(this.zzc);
    }

    public final Map zze() {
        return Collections.unmodifiableMap(this.zzd);
    }

    public final WebView zzf() {
        return this.zzb;
    }

    public final String zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zze;
    }

    public final zzfto zzi() {
        return this.zzg;
    }
}
