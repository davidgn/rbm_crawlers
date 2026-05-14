package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class zzgwa {
    public static boolean zza(Iterable iterable, zzgsk zzgskVar) {
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            zzgskVar.getClass();
            return zzc((List) iterable, zzgskVar);
        }
        Iterator it = iterable.iterator();
        zzgskVar.getClass();
        boolean z4 = false;
        while (it.hasNext()) {
            if (zzgskVar.zza(it.next())) {
                it.remove();
                z4 = true;
            }
        }
        return z4;
    }

    public static Object zzb(Iterable iterable, Object obj) {
        zzgya it = ((zzgxr) iterable).iterator();
        return it.hasNext() ? it.next() : obj;
    }

    private static boolean zzc(List list, zzgsk zzgskVar) {
        int i = 0;
        int i4 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!zzgskVar.zza(obj)) {
                if (i > i4) {
                    try {
                        list.set(i4, obj);
                    } catch (IllegalArgumentException unused) {
                        zzd(list, zzgskVar, i4, i);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        zzd(list, zzgskVar, i4, i);
                        return true;
                    }
                }
                i4++;
            }
            i++;
        }
        list.subList(i4, list.size()).clear();
        return i != i4;
    }

    private static void zzd(List list, zzgsk zzgskVar, int i, int i4) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i4) {
                break;
            } else if (zzgskVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i4--;
            if (i4 < i) {
                return;
            }
            list.remove(i4);
        }
    }
}
