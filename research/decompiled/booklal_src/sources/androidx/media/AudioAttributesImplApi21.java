package androidx.media;

import android.media.AudioAttributes;
/* loaded from: classes.dex */
class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* renamed from: a  reason: collision with root package name */
    public AudioAttributes f4479a;

    /* renamed from: b  reason: collision with root package name */
    public int f4480b = -1;

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f4479a.equals(((AudioAttributesImplApi21) obj).f4479a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4479a.hashCode();
    }

    public final String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f4479a;
    }
}
