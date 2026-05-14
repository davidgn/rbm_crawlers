package com.google.android.gms.internal.ads;
@Deprecated
/* loaded from: classes.dex */
public class zzaim implements zzao {
    public final String zza;
    public final String zzb;

    public zzaim(String str, String str2) {
        this.zza = zzgrs.zzb(str);
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzaim zzaimVar = (zzaim) obj;
            if (this.zza.equals(zzaimVar.zza) && this.zzb.equals(zzaimVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() + ((this.zza.hashCode() + 527) * 31);
    }

    public final String toString() {
        String str = this.zza;
        int length = String.valueOf(str).length();
        String str2 = this.zzb;
        return C.a.r(new StringBuilder(length + 5 + String.valueOf(str2).length()), "VC: ", str, "=", str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzao
    public final void zza(zzam zzamVar) {
        char c5;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    c5 = 5;
                    break;
                }
                c5 = 65535;
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    c5 = 7;
                    break;
                }
                c5 = 65535;
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    c5 = 4;
                    break;
                }
                c5 = 65535;
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    c5 = '\b';
                    break;
                }
                c5 = 65535;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c5 = '\t';
                    break;
                }
                c5 = 65535;
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    c5 = 6;
                    break;
                }
                c5 = 65535;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        switch (c5) {
            case 0:
                zzamVar.zza(this.zzb);
                return;
            case 1:
                zzamVar.zzb(this.zzb);
                return;
            case 2:
                zzamVar.zzc(this.zzb);
                return;
            case 3:
                zzamVar.zzd(this.zzb);
                return;
            case 4:
                Integer zzh = zzgzg.zzh(this.zzb, 10);
                if (zzh != null) {
                    zzamVar.zzg(zzh);
                    return;
                }
                return;
            case 5:
                Integer zzh2 = zzgzg.zzh(this.zzb, 10);
                if (zzh2 != null) {
                    zzamVar.zzh(zzh2);
                    return;
                }
                return;
            case 6:
                Integer zzh3 = zzgzg.zzh(this.zzb, 10);
                if (zzh3 != null) {
                    zzamVar.zzr(zzh3);
                    return;
                }
                return;
            case 7:
                Integer zzh4 = zzgzg.zzh(this.zzb, 10);
                if (zzh4 != null) {
                    zzamVar.zzs(zzh4);
                    return;
                }
                return;
            case '\b':
                zzamVar.zzt(this.zzb);
                return;
            case '\t':
                zzamVar.zze(this.zzb);
                return;
            default:
                return;
        }
    }
}
