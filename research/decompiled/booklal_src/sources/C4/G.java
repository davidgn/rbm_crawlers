package C4;

import android.graphics.Bitmap;
import h3.AbstractC0453F;
/* loaded from: classes2.dex */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public final int f413a;

    /* renamed from: b  reason: collision with root package name */
    public final int f414b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f415c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f416d;

    public G(A a5, int i, byte[] bArr, int i4) {
        this.f415c = a5;
        this.f413a = i;
        this.f416d = bArr;
        this.f414b = i4;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public G(Q4.y yVar, int i) {
        this((Bitmap) null, yVar, i, 0);
        StringBuilder sb = AbstractC0453F.f7682a;
        if (yVar == null) {
            throw new NullPointerException("source == null");
        }
    }

    public G(Bitmap bitmap, Q4.y yVar, int i, int i4) {
        if ((bitmap != null) != (yVar != null)) {
            this.f415c = bitmap;
            this.f416d = yVar;
            if (i != 0) {
                this.f413a = i;
                this.f414b = i4;
                return;
            }
            throw new NullPointerException("loadedFrom == null");
        }
        throw new AssertionError();
    }
}
