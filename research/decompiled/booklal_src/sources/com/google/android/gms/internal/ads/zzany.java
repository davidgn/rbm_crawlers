package com.google.android.gms.internal.ads;

import android.text.Layout;
/* loaded from: classes.dex */
final class zzany {
    private String zza;
    private int zzb;
    private boolean zzc;
    private int zzd;
    private boolean zze;
    private float zzk;
    private String zzl;
    private Layout.Alignment zzo;
    private Layout.Alignment zzp;
    private zzanr zzr;
    private String zzt;
    private String zzu;
    private int zzf = -1;
    private int zzg = -1;
    private int zzh = -1;
    private int zzi = -1;
    private int zzj = -1;
    private int zzm = -1;
    private int zzn = -1;
    private int zzq = -1;
    private float zzs = Float.MAX_VALUE;

    public final Layout.Alignment zzA() {
        return this.zzp;
    }

    public final zzany zzB(Layout.Alignment alignment) {
        this.zzp = alignment;
        return this;
    }

    public final boolean zzC() {
        return this.zzq == 1;
    }

    public final zzany zzD(boolean z4) {
        this.zzq = z4 ? 1 : 0;
        return this;
    }

    public final zzanr zzE() {
        return this.zzr;
    }

    public final zzany zzF(zzanr zzanrVar) {
        this.zzr = zzanrVar;
        return this;
    }

    public final zzany zzG(float f5) {
        this.zzk = f5;
        return this;
    }

    public final zzany zzH(int i) {
        this.zzj = i;
        return this;
    }

    public final int zzI() {
        return this.zzj;
    }

    public final float zzJ() {
        return this.zzk;
    }

    public final zzany zzK(String str) {
        this.zzt = str;
        return this;
    }

    public final String zzL() {
        return this.zzt;
    }

    public final zzany zzM(String str) {
        this.zzu = str;
        return this;
    }

    public final String zzN() {
        return this.zzu;
    }

    public final int zza() {
        int i = this.zzh;
        if (i == -1 && this.zzi == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.zzi == 1 ? 2 : 0);
    }

    public final boolean zzb() {
        return this.zzf == 1;
    }

    public final zzany zzc(boolean z4) {
        this.zzf = z4 ? 1 : 0;
        return this;
    }

    public final boolean zzd() {
        return this.zzg == 1;
    }

    public final zzany zze(boolean z4) {
        this.zzg = z4 ? 1 : 0;
        return this;
    }

    public final zzany zzf(boolean z4) {
        this.zzh = z4 ? 1 : 0;
        return this;
    }

    public final zzany zzg(boolean z4) {
        this.zzi = z4 ? 1 : 0;
        return this;
    }

    public final String zzh() {
        return this.zza;
    }

    public final zzany zzi(String str) {
        this.zza = str;
        return this;
    }

    public final int zzj() {
        if (this.zzc) {
            return this.zzb;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public final zzany zzk(int i) {
        this.zzb = i;
        this.zzc = true;
        return this;
    }

    public final boolean zzl() {
        return this.zzc;
    }

    public final int zzm() {
        if (this.zze) {
            return this.zzd;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public final zzany zzn(int i) {
        this.zzd = i;
        this.zze = true;
        return this;
    }

    public final boolean zzo() {
        return this.zze;
    }

    public final zzany zzp(float f5) {
        this.zzs = f5;
        return this;
    }

    public final float zzq() {
        return this.zzs;
    }

    public final zzany zzr(zzany zzanyVar) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (zzanyVar != null) {
            if (!this.zzc && zzanyVar.zzc) {
                zzk(zzanyVar.zzb);
            }
            if (this.zzh == -1) {
                this.zzh = zzanyVar.zzh;
            }
            if (this.zzi == -1) {
                this.zzi = zzanyVar.zzi;
            }
            if (this.zza == null && (str = zzanyVar.zza) != null) {
                this.zza = str;
            }
            if (this.zzf == -1) {
                this.zzf = zzanyVar.zzf;
            }
            if (this.zzg == -1) {
                this.zzg = zzanyVar.zzg;
            }
            if (this.zzn == -1) {
                this.zzn = zzanyVar.zzn;
            }
            if (this.zzo == null && (alignment2 = zzanyVar.zzo) != null) {
                this.zzo = alignment2;
            }
            if (this.zzp == null && (alignment = zzanyVar.zzp) != null) {
                this.zzp = alignment;
            }
            if (this.zzq == -1) {
                this.zzq = zzanyVar.zzq;
            }
            if (this.zzj == -1) {
                this.zzj = zzanyVar.zzj;
                this.zzk = zzanyVar.zzk;
            }
            if (this.zzr == null) {
                this.zzr = zzanyVar.zzr;
            }
            if (this.zzs == Float.MAX_VALUE) {
                this.zzs = zzanyVar.zzs;
            }
            if (this.zzt == null) {
                this.zzt = zzanyVar.zzt;
            }
            if (this.zzu == null) {
                this.zzu = zzanyVar.zzu;
            }
            if (!this.zze && zzanyVar.zze) {
                zzn(zzanyVar.zzd);
            }
            if (this.zzm == -1 && (i = zzanyVar.zzm) != -1) {
                this.zzm = i;
            }
        }
        return this;
    }

    public final zzany zzs(String str) {
        this.zzl = str;
        return this;
    }

    public final String zzt() {
        return this.zzl;
    }

    public final zzany zzu(int i) {
        this.zzm = i;
        return this;
    }

    public final int zzv() {
        return this.zzm;
    }

    public final zzany zzw(int i) {
        this.zzn = i;
        return this;
    }

    public final int zzx() {
        return this.zzn;
    }

    public final Layout.Alignment zzy() {
        return this.zzo;
    }

    public final zzany zzz(Layout.Alignment alignment) {
        this.zzo = alignment;
        return this;
    }
}
