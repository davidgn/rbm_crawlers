package n4;

import java.util.Random;
/* renamed from: n4.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0755a extends d {
    @Override // n4.d
    public final int a(int i) {
        return ((-i) >> 31) & (f().nextInt() >>> (32 - i));
    }

    @Override // n4.d
    public final int b() {
        return f().nextInt();
    }

    @Override // n4.d
    public final int e() {
        return f().nextInt(2147418112);
    }

    public abstract Random f();
}
