package androidx.fragment.app;

import android.util.Log;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.io.Writer;
/* loaded from: classes.dex */
public final class t0 extends Writer {

    /* renamed from: b  reason: collision with root package name */
    public final StringBuilder f4341b = new StringBuilder((int) UserVerificationMethods.USER_VERIFY_PATTERN);

    /* renamed from: a  reason: collision with root package name */
    public final String f4340a = "FragmentManager";

    public final void b() {
        StringBuilder sb = this.f4341b;
        if (sb.length() > 0) {
            Log.d(this.f4340a, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        b();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            char c5 = cArr[i + i5];
            if (c5 == '\n') {
                b();
            } else {
                this.f4341b.append(c5);
            }
        }
    }
}
