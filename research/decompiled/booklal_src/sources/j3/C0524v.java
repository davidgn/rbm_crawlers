package j3;

import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: j3.v  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0524v implements Comparable {

    /* renamed from: d  reason: collision with root package name */
    public static final C0517n f8140d = new C0517n(3);

    /* renamed from: e  reason: collision with root package name */
    public static final long f8141e;

    /* renamed from: f  reason: collision with root package name */
    public static final long f8142f;

    /* renamed from: l  reason: collision with root package name */
    public static final long f8143l;

    /* renamed from: a  reason: collision with root package name */
    public final C0517n f8144a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8145b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f8146c;

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f8141e = nanos;
        f8142f = -nanos;
        f8143l = TimeUnit.SECONDS.toNanos(1L);
    }

    public C0524v(long j5) {
        C0517n c0517n = f8140d;
        long nanoTime = System.nanoTime();
        this.f8144a = c0517n;
        long min = Math.min(f8141e, Math.max(f8142f, j5));
        this.f8145b = nanoTime + min;
        this.f8146c = min <= 0;
    }

    public final boolean a() {
        if (!this.f8146c) {
            long j5 = this.f8145b;
            this.f8144a.getClass();
            if (j5 - System.nanoTime() > 0) {
                return false;
            }
            this.f8146c = true;
        }
        return true;
    }

    public final long b(TimeUnit timeUnit) {
        this.f8144a.getClass();
        long nanoTime = System.nanoTime();
        if (!this.f8146c && this.f8145b - nanoTime <= 0) {
            this.f8146c = true;
        }
        return timeUnit.convert(this.f8145b - nanoTime, TimeUnit.NANOSECONDS);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        C0524v c0524v = (C0524v) obj;
        C0517n c0517n = c0524v.f8144a;
        C0517n c0517n2 = this.f8144a;
        if (c0517n2 == c0517n) {
            int i = ((this.f8145b - c0524v.f8145b) > 0L ? 1 : ((this.f8145b - c0524v.f8145b) == 0L ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i > 0 ? 1 : 0;
        }
        throw new AssertionError("Tickers (" + c0517n2 + " and " + c0524v.f8144a + ") don't match. Custom Ticker should only be used in tests!");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0524v) {
            C0524v c0524v = (C0524v) obj;
            C0517n c0517n = this.f8144a;
            if (c0517n != null ? c0517n == c0524v.f8144a : c0524v.f8144a == null) {
                return this.f8145b == c0524v.f8145b;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.asList(this.f8144a, Long.valueOf(this.f8145b)).hashCode();
    }

    public final String toString() {
        long b5 = b(TimeUnit.NANOSECONDS);
        long abs = Math.abs(b5);
        long j5 = f8143l;
        long j6 = abs / j5;
        long abs2 = Math.abs(b5) % j5;
        StringBuilder sb = new StringBuilder();
        if (b5 < 0) {
            sb.append('-');
        }
        sb.append(j6);
        if (abs2 > 0) {
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(abs2)));
        }
        sb.append("s from now");
        C0517n c0517n = f8140d;
        C0517n c0517n2 = this.f8144a;
        if (c0517n2 != c0517n) {
            sb.append(" (ticker=" + c0517n2 + ")");
        }
        return sb.toString();
    }
}
