package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
public enum zzbcy implements zzidh {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6),
    RISCV64(7),
    UNKNOWN(999);
    
    private final int zzh;

    zzbcy(int i) {
        this.zzh = i;
    }

    public static zzbcy zzb(int i) {
        if (i != 0) {
            if (i != 2) {
                if (i != 999) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 6) {
                                if (i != 7) {
                                    return null;
                                }
                                return RISCV64;
                            }
                            return X86_64;
                        }
                        return ARM64;
                    }
                    return X86;
                }
                return UNKNOWN;
            }
            return ARM7;
        }
        return UNSUPPORTED;
    }

    public static zzidj zzc() {
        return zzbcx.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzh);
    }

    @Override // com.google.android.gms.internal.ads.zzidh
    public final int zza() {
        return this.zzh;
    }
}
