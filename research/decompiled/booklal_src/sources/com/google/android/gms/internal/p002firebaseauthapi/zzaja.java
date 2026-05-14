package com.google.android.gms.internal.p002firebaseauthapi;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
@Deprecated
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaja  reason: invalid package */
/* loaded from: classes2.dex */
public final class zzaja extends AbstractList implements RandomAccess, zzagx {
    private final zzagx zza;

    public zzaja(zzagx zzagxVar) {
        this.zza = zzagxVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return ((zzagw) this.zza).get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzaiz(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new zzaiy(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagx
    public final zzagx zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagx
    public final Object zzf(int i) {
        return this.zza.zzf(i);
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagx
    public final List zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.p002firebaseauthapi.zzagx
    public final void zzi(zzaff zzaffVar) {
        throw new UnsupportedOperationException();
    }
}
