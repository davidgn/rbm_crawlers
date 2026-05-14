package y4;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import t4.L;
import t4.M;
/* loaded from: classes2.dex */
public class y {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f11616b = AtomicIntegerFieldUpdater.newUpdater(y.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: a  reason: collision with root package name */
    public L[] f11617a;

    public final void a(L l5) {
        l5.d((M) this);
        L[] lArr = this.f11617a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f11616b;
        if (lArr == null) {
            lArr = new L[4];
            this.f11617a = lArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= lArr.length) {
            Object[] copyOf = Arrays.copyOf(lArr, atomicIntegerFieldUpdater.get(this) * 2);
            kotlin.jvm.internal.i.e(copyOf, "copyOf(...)");
            lArr = (L[]) copyOf;
            this.f11617a = lArr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        lArr[i] = l5;
        l5.f10449b = i;
        c(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
        if (r6.compareTo(r7) < 0) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final t4.L b(int r9) {
        /*
            r8 = this;
            t4.L[] r0 = r8.f11617a
            kotlin.jvm.internal.i.c(r0)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = y4.y.f11616b
            int r2 = r1.get(r8)
            r3 = -1
            int r2 = r2 + r3
            r1.set(r8, r2)
            int r2 = r1.get(r8)
            if (r9 >= r2) goto L7a
            int r2 = r1.get(r8)
            r8.d(r9, r2)
            int r2 = r9 + (-1)
            int r2 = r2 / 2
            if (r9 <= 0) goto L3a
            r4 = r0[r9]
            kotlin.jvm.internal.i.c(r4)
            r5 = r0[r2]
            kotlin.jvm.internal.i.c(r5)
            int r4 = r4.compareTo(r5)
            if (r4 >= 0) goto L3a
            r8.d(r9, r2)
            r8.c(r2)
            goto L7a
        L3a:
            int r2 = r9 * 2
            int r4 = r2 + 1
            int r5 = r1.get(r8)
            if (r4 < r5) goto L45
            goto L7a
        L45:
            t4.L[] r5 = r8.f11617a
            kotlin.jvm.internal.i.c(r5)
            int r2 = r2 + 2
            int r6 = r1.get(r8)
            if (r2 >= r6) goto L63
            r6 = r5[r2]
            kotlin.jvm.internal.i.c(r6)
            r7 = r5[r4]
            kotlin.jvm.internal.i.c(r7)
            int r6 = r6.compareTo(r7)
            if (r6 >= 0) goto L63
            goto L64
        L63:
            r2 = r4
        L64:
            r4 = r5[r9]
            kotlin.jvm.internal.i.c(r4)
            r5 = r5[r2]
            kotlin.jvm.internal.i.c(r5)
            int r4 = r4.compareTo(r5)
            if (r4 > 0) goto L75
            goto L7a
        L75:
            r8.d(r9, r2)
            r9 = r2
            goto L3a
        L7a:
            int r9 = r1.get(r8)
            r9 = r0[r9]
            kotlin.jvm.internal.i.c(r9)
            r2 = 0
            r9.d(r2)
            r9.f10449b = r3
            int r1 = r1.get(r8)
            r0[r1] = r2
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: y4.y.b(int):t4.L");
    }

    public final void c(int i) {
        while (i > 0) {
            L[] lArr = this.f11617a;
            kotlin.jvm.internal.i.c(lArr);
            int i4 = (i - 1) / 2;
            L l5 = lArr[i4];
            kotlin.jvm.internal.i.c(l5);
            L l6 = lArr[i];
            kotlin.jvm.internal.i.c(l6);
            if (l5.compareTo(l6) <= 0) {
                return;
            }
            d(i, i4);
            i = i4;
        }
    }

    public final void d(int i, int i4) {
        L[] lArr = this.f11617a;
        kotlin.jvm.internal.i.c(lArr);
        L l5 = lArr[i4];
        kotlin.jvm.internal.i.c(l5);
        L l6 = lArr[i];
        kotlin.jvm.internal.i.c(l6);
        lArr[i] = l5;
        lArr[i4] = l6;
        l5.f10449b = i;
        l6.f10449b = i4;
    }
}
