package O3;

import H3.g;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2.dex */
public final class b implements g {

    /* renamed from: n  reason: collision with root package name */
    public static final int f2191n = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    public static final Object o = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final AtomicLong f2192a;

    /* renamed from: b  reason: collision with root package name */
    public final int f2193b;

    /* renamed from: c  reason: collision with root package name */
    public long f2194c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2195d;

    /* renamed from: e  reason: collision with root package name */
    public AtomicReferenceArray f2196e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2197f;

    /* renamed from: l  reason: collision with root package name */
    public AtomicReferenceArray f2198l;

    /* renamed from: m  reason: collision with root package name */
    public final AtomicLong f2199m;

    public b(int i) {
        AtomicLong atomicLong = new AtomicLong();
        this.f2192a = atomicLong;
        this.f2199m = new AtomicLong();
        int numberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i) - 1));
        int i4 = numberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(numberOfLeadingZeros + 1);
        this.f2196e = atomicReferenceArray;
        this.f2195d = i4;
        this.f2193b = Math.min(numberOfLeadingZeros / 4, f2191n);
        this.f2198l = atomicReferenceArray;
        this.f2197f = i4;
        this.f2194c = numberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    @Override // H3.h
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // H3.h
    public final boolean isEmpty() {
        return this.f2192a.get() == this.f2199m.get();
    }

    @Override // H3.h
    public final boolean offer(Object obj) {
        if (obj != null) {
            AtomicReferenceArray atomicReferenceArray = this.f2196e;
            AtomicLong atomicLong = this.f2192a;
            long j5 = atomicLong.get();
            int i = this.f2195d;
            int i4 = ((int) j5) & i;
            if (j5 < this.f2194c) {
                atomicReferenceArray.lazySet(i4, obj);
                atomicLong.lazySet(j5 + 1);
                return true;
            }
            long j6 = this.f2193b + j5;
            if (atomicReferenceArray.get(((int) j6) & i) == null) {
                this.f2194c = j6 - 1;
                atomicReferenceArray.lazySet(i4, obj);
                atomicLong.lazySet(j5 + 1);
                return true;
            }
            long j7 = j5 + 1;
            if (atomicReferenceArray.get(((int) j7) & i) == null) {
                atomicReferenceArray.lazySet(i4, obj);
                atomicLong.lazySet(j7);
                return true;
            }
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
            this.f2196e = atomicReferenceArray2;
            this.f2194c = (j5 + i) - 1;
            atomicReferenceArray2.lazySet(i4, obj);
            atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
            atomicReferenceArray.lazySet(i4, o);
            atomicLong.lazySet(j7);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // H3.h
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f2198l;
        AtomicLong atomicLong = this.f2199m;
        long j5 = atomicLong.get();
        int i = this.f2197f;
        int i4 = ((int) j5) & i;
        Object obj = atomicReferenceArray.get(i4);
        boolean z4 = obj == o;
        if (obj != null && !z4) {
            atomicReferenceArray.lazySet(i4, null);
            atomicLong.lazySet(j5 + 1);
            return obj;
        } else if (z4) {
            int i5 = i + 1;
            AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i5);
            atomicReferenceArray.lazySet(i5, null);
            this.f2198l = atomicReferenceArray2;
            Object obj2 = atomicReferenceArray2.get(i4);
            if (obj2 != null) {
                atomicReferenceArray2.lazySet(i4, null);
                atomicLong.lazySet(j5 + 1);
            }
            return obj2;
        } else {
            return null;
        }
    }
}
