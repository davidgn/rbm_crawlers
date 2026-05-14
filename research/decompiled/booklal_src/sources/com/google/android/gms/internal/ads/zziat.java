package com.google.android.gms.internal.ads;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
/* loaded from: classes.dex */
abstract class zziat implements Iterator {
    zziau zza;
    zziau zzb;
    int zzc;
    final /* synthetic */ zziav zzd;

    public zziat(zziav zziavVar) {
        Objects.requireNonNull(zziavVar);
        this.zzd = zziavVar;
        this.zza = zziavVar.zzd.zzd;
        this.zzb = null;
        this.zzc = zziavVar.zzc;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zza != this.zzd.zzd;
    }

    @Override // java.util.Iterator
    public final void remove() {
        zziau zziauVar = this.zzb;
        if (zziauVar == null) {
            throw new IllegalStateException();
        }
        zziav zziavVar = this.zzd;
        zziavVar.zzd(zziauVar, true);
        this.zzb = null;
        this.zzc = zziavVar.zzc;
    }

    public final zziau zza() {
        zziav zziavVar = this.zzd;
        zziau zziauVar = this.zza;
        if (zziauVar != zziavVar.zzd) {
            if (zziavVar.zzc == this.zzc) {
                this.zza = zziauVar.zzd;
                this.zzb = zziauVar;
                return zziauVar;
            }
            throw new ConcurrentModificationException();
        }
        throw new NoSuchElementException();
    }
}
