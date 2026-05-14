package androidx.media;

import H0.c;
import android.util.SparseIntArray;
/* loaded from: classes.dex */
public class AudioAttributesCompat implements c {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f4477b = 0;

    /* renamed from: a  reason: collision with root package name */
    public AudioAttributesImpl f4478a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesCompat) {
            AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
            AudioAttributesImpl audioAttributesImpl = this.f4478a;
            return audioAttributesImpl == null ? audioAttributesCompat.f4478a == null : audioAttributesImpl.equals(audioAttributesCompat.f4478a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4478a.hashCode();
    }

    public final String toString() {
        return this.f4478a.toString();
    }
}
