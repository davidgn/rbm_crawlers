package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class zzgxv extends AbstractSet {
    private zzgxv() {
        throw null;
    }

    public static int zzd(Set set) {
        return set instanceof zzgxv ? ((zzgxv) set).zzc() : set.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Set set;
        int zzd;
        int size;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof Set) && (zzd = zzd((set = (Set) obj))) >= 0) {
            if (set instanceof zzgxv) {
                ((zzgxv) set).zzb();
                size = 0;
            } else {
                size = set.size();
            }
            if (zzc() < size) {
                return false;
            }
            zzgya it = iterator();
            int i = 0;
            while (it.hasNext()) {
                if (!set.contains(it.next())) {
                    return false;
                }
                i++;
            }
            if (i == zzd) {
                return true;
            }
            if (i < size) {
                return false;
            }
            Iterator it2 = set.iterator();
            int i4 = 0;
            while (it2.hasNext()) {
                it2.next();
                i4++;
                if (i4 > i) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @Deprecated
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zza */
    public abstract zzgya iterator();

    public abstract int zzb();

    public abstract int zzc();

    public /* synthetic */ zzgxv(byte[] bArr) {
    }
}
