package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes.dex */
public class zzdtq implements com.google.android.gms.ads.internal.client.zza, zzbnl, com.google.android.gms.ads.internal.overlay.zzr, zzbnn, com.google.android.gms.ads.internal.overlay.zzad {
    private com.google.android.gms.ads.internal.client.zza zza;
    private zzbnl zzb;
    private com.google.android.gms.ads.internal.overlay.zzr zzc;
    private zzbnn zzd;
    private com.google.android.gms.ads.internal.overlay.zzad zze;

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zza;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final synchronized void zza(String str, Bundle bundle) {
        zzbnl zzbnlVar = this.zzb;
        if (zzbnlVar != null) {
            zzbnlVar.zza(str, bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final synchronized void zzb(String str, String str2) {
        zzbnn zzbnnVar = this.zzd;
        if (zzbnnVar != null) {
            zzbnnVar.zzb(str, str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdT() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdT();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdU(int i) {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdU(i);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdo();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdp();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdq();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdv() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdv();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdw() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdw();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdx() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdx();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzdz();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzh() {
        com.google.android.gms.ads.internal.overlay.zzr zzrVar = this.zzc;
        if (zzrVar != null) {
            zzrVar.zzh();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzad
    public final synchronized void zzl() {
        com.google.android.gms.ads.internal.overlay.zzad zzadVar = this.zze;
        if (zzadVar != null) {
            zzadVar.zzl();
        }
    }

    public final synchronized void zzm(com.google.android.gms.ads.internal.client.zza zzaVar, zzbnl zzbnlVar, com.google.android.gms.ads.internal.overlay.zzr zzrVar, zzbnn zzbnnVar, com.google.android.gms.ads.internal.overlay.zzad zzadVar) {
        this.zza = zzaVar;
        this.zzb = zzbnlVar;
        this.zzc = zzrVar;
        this.zzd = zzbnnVar;
        this.zze = zzadVar;
    }
}
