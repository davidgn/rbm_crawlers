package com.google.android.gms.internal.p002firebaseauthapi;

import com.google.android.gms.common.internal.Preconditions;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzado  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzado implements zzaaq {
    private final String zza;
    private final long zzb;
    private final boolean zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final boolean zzh;
    private zzacf zzi;

    public zzado(String str, long j5, boolean z4, String str2, String str3, String str4, String str5, boolean z5) {
        this.zza = Preconditions.checkNotEmpty(str);
        this.zzb = j5;
        this.zzc = z4;
        this.zzd = str2;
        this.zze = str3;
        this.zzf = str4;
        this.zzg = str5;
        this.zzh = z5;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzaaq
    public final String zza() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("phoneNumber", this.zza);
        String str = this.zze;
        if (str != null) {
            jSONObject.put("tenantId", str);
        }
        String str2 = this.zzf;
        if (str2 != null) {
            jSONObject.put("recaptchaToken", str2);
        }
        zzacf zzacfVar = this.zzi;
        if (zzacfVar != null) {
            jSONObject.put("autoRetrievalInfo", zzacfVar.zza());
        }
        String str3 = this.zzg;
        if (str3 != null) {
            jSONObject.put("playIntegrityToken", str3);
        }
        return jSONObject.toString();
    }

    public final long zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zza;
    }

    public final void zze(zzacf zzacfVar) {
        this.zzi = zzacfVar;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        return this.zzh;
    }
}
