package com.google.android.gms.internal.ads;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;
/* loaded from: classes.dex */
public final class zzdd {
    public static void zza(Spannable spannable, Object obj, int i, int i4, int i5) {
        for (Object obj2 : spannable.getSpans(i, i4, obj.getClass())) {
            zzc(spannable, obj2, i, i4, 33);
        }
        spannable.setSpan(obj, i, i4, 33);
    }

    public static void zzb(Spannable spannable, float f5, int i, int i4, int i5) {
        RelativeSizeSpan[] relativeSizeSpanArr;
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i, i4, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i && spannable.getSpanEnd(relativeSizeSpan) >= i4) {
                f5 = relativeSizeSpan.getSizeChange() * f5;
            }
            zzc(spannable, relativeSizeSpan, i, i4, 33);
        }
        spannable.setSpan(new RelativeSizeSpan(f5), i, i4, 33);
    }

    private static void zzc(Spannable spannable, Object obj, int i, int i4, int i5) {
        if (spannable.getSpanStart(obj) == i && spannable.getSpanEnd(obj) == i4 && spannable.getSpanFlags(obj) == 33) {
            spannable.removeSpan(obj);
        }
    }
}
