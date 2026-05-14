package O3;

import H3.g;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2.dex */
public final class a extends AtomicReferenceArray implements g {

    /* renamed from: f  reason: collision with root package name */
    public static final Integer f2185f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: a  reason: collision with root package name */
    public final int f2186a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicLong f2187b;

    /* renamed from: c  reason: collision with root package name */
    public long f2188c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicLong f2189d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2190e;

    public a(int i) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i - 1)));
        this.f2186a = length() - 1;
        this.f2187b = new AtomicLong();
        this.f2189d = new AtomicLong();
        this.f2190e = Math.min(i / 4, f2185f.intValue());
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
        return this.f2187b.get() == this.f2189d.get();
    }

    @Override // H3.h
    public final boolean offer(Object obj) {
        if (obj != null) {
            AtomicLong atomicLong = this.f2187b;
            long j5 = atomicLong.get();
            int i = this.f2186a;
            int i4 = ((int) j5) & i;
            if (j5 >= this.f2188c) {
                long j6 = this.f2190e + j5;
                if (get(i & ((int) j6)) == null) {
                    this.f2188c = j6;
                } else if (get(i4) != null) {
                    return false;
                }
            }
            lazySet(i4, obj);
            atomicLong.lazySet(j5 + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    @Override // H3.h
    public final Object poll() {
        AtomicLong atomicLong = this.f2189d;
        long j5 = atomicLong.get();
        int i = ((int) j5) & this.f2186a;
        Object obj = get(i);
        if (obj == null) {
            return null;
        }
        atomicLong.lazySet(j5 + 1);
        lazySet(i, null);
        return obj;
    }
}
