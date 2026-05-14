package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgzf extends AbstractList implements RandomAccess, Serializable {
    final int[] zza;
    final int zzb;
    final int zzc;

    public zzgzf(int[] iArr, int i, int i4) {
        this.zza = iArr;
        this.zzb = i;
        this.zzc = i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return (obj instanceof Integer) && zzgzg.zzi(this.zza, ((Integer) obj).intValue(), this.zzb, this.zzc) != -1;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgzf) {
            zzgzf zzgzfVar = (zzgzf) obj;
            int i = this.zzc;
            int i4 = this.zzb;
            int i5 = zzgzfVar.zzc;
            int i6 = zzgzfVar.zzb;
            int i7 = i - i4;
            if (i5 - i6 == i7) {
                for (int i8 = 0; i8 < i7; i8++) {
                    if (this.zza[i4 + i8] != zzgzfVar.zza[i6 + i8]) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i4 = this.zzc;
        int i5 = this.zzb;
        zzgsj.zzm(i, i4 - i5, FirebaseAnalytics.Param.INDEX);
        return Integer.valueOf(this.zza[i5 + i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i4 = this.zzb; i4 < this.zzc; i4++) {
            i = (i * 31) + Integer.hashCode(this.zza[i4]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.zza;
            int intValue = ((Integer) obj).intValue();
            int i = this.zzb;
            int zzi = zzgzg.zzi(iArr, intValue, i, this.zzc);
            if (zzi >= 0) {
                return zzi - i;
            }
            return -1;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj instanceof Integer) {
            int[] iArr = this.zza;
            int intValue = ((Integer) obj).intValue();
            int i = this.zzb;
            int i4 = this.zzc - 1;
            while (true) {
                if (i4 < i) {
                    i4 = -1;
                    break;
                } else if (iArr[i4] == intValue) {
                    break;
                } else {
                    i4--;
                }
            }
            if (i4 >= 0) {
                return i4 - i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int i4 = this.zzc;
        int i5 = this.zzb;
        Integer num = (Integer) obj;
        zzgsj.zzm(i, i4 - i5, FirebaseAnalytics.Param.INDEX);
        int[] iArr = this.zza;
        int i6 = i5 + i;
        int i7 = iArr[i6];
        num.getClass();
        iArr[i6] = num.intValue();
        return Integer.valueOf(i7);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc - this.zzb;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.spliterator(this.zza, this.zzb, this.zzc, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i4) {
        int i5 = this.zzc;
        int i6 = this.zzb;
        zzgsj.zzo(i, i4, i5 - i6);
        return i == i4 ? Collections.emptyList() : new zzgzf(this.zza, i + i6, i6 + i4);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        int i = this.zzc;
        int i4 = this.zzb;
        StringBuilder sb = new StringBuilder((i - i4) * 5);
        sb.append('[');
        int[] iArr = this.zza;
        sb.append(iArr[i4]);
        while (true) {
            i4++;
            if (i4 >= i) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i4]);
        }
    }
}
