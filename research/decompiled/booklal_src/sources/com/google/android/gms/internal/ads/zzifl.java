package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzifl implements Iterator {
    final /* synthetic */ zzifn zza;
    private int zzb;
    private boolean zzc;
    private Iterator zzd;

    public /* synthetic */ zzifl(zzifn zzifnVar, byte[] bArr) {
        Objects.requireNonNull(zzifnVar);
        this.zza = zzifnVar;
        this.zzb = -1;
    }

    private final Iterator zza() {
        if (this.zzd == null) {
            this.zzd = this.zza.zzk().entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.zzb + 1;
        zzifn zzifnVar = this.zza;
        if (i >= zzifnVar.zzj()) {
            return !zzifnVar.zzk().isEmpty() && zza().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        zzifn zzifnVar = this.zza;
        return i < zzifnVar.zzj() ? (zzifk) zzifnVar.zzi()[i] : (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.zzc) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.zzc = false;
        zzifn zzifnVar = this.zza;
        zzifnVar.zzh();
        int i = this.zzb;
        if (i >= zzifnVar.zzj()) {
            zza().remove();
            return;
        }
        this.zzb = i - 1;
        zzifnVar.zzg(i);
    }
}
