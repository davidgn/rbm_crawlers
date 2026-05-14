package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class zzgtk extends zzgya {
    private Object zza;
    private int zzb = 2;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzgsj.zzi(this.zzb != 4);
        int i = this.zzb;
        int i4 = i - 1;
        if (i != 0) {
            if (i4 != 0) {
                if (i4 != 2) {
                    this.zzb = 4;
                    this.zza = zza();
                    if (this.zzb != 3) {
                        this.zzb = 1;
                        return true;
                    }
                }
                return false;
            }
            return true;
        }
        throw null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.zzb = 2;
            Object obj = this.zza;
            this.zza = null;
            return obj;
        }
        throw new NoSuchElementException();
    }

    public abstract Object zza();

    public final Object zzb() {
        this.zzb = 3;
        return null;
    }
}
