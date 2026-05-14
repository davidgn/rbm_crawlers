package h3;

import java.io.PrintWriter;
/* renamed from: h3.E  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0452E {

    /* renamed from: a  reason: collision with root package name */
    public final int f7669a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7670b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7671c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7672d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7673e;

    /* renamed from: f  reason: collision with root package name */
    public final long f7674f;

    /* renamed from: g  reason: collision with root package name */
    public final long f7675g;

    /* renamed from: h  reason: collision with root package name */
    public final long f7676h;
    public final long i;

    /* renamed from: j  reason: collision with root package name */
    public final long f7677j;

    /* renamed from: k  reason: collision with root package name */
    public final int f7678k;

    /* renamed from: l  reason: collision with root package name */
    public final int f7679l;

    /* renamed from: m  reason: collision with root package name */
    public final int f7680m;

    /* renamed from: n  reason: collision with root package name */
    public final long f7681n;

    public C0452E(int i, int i4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, int i5, int i6, int i7, long j13) {
        this.f7669a = i;
        this.f7670b = i4;
        this.f7671c = j5;
        this.f7672d = j6;
        this.f7673e = j7;
        this.f7674f = j8;
        this.f7675g = j9;
        this.f7676h = j10;
        this.i = j11;
        this.f7677j = j12;
        this.f7678k = i5;
        this.f7679l = i6;
        this.f7680m = i7;
        this.f7681n = j13;
    }

    public final void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        int i = this.f7669a;
        printWriter.println(i);
        printWriter.print("  Cache Size: ");
        int i4 = this.f7670b;
        printWriter.println(i4);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((i4 / i) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f7671c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f7672d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f7678k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f7673e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f7676h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f7679l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f7674f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f7680m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f7675g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f7677j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public final String toString() {
        return "StatsSnapshot{maxSize=" + this.f7669a + ", size=" + this.f7670b + ", cacheHits=" + this.f7671c + ", cacheMisses=" + this.f7672d + ", downloadCount=" + this.f7678k + ", totalDownloadSize=" + this.f7673e + ", averageDownloadSize=" + this.f7676h + ", totalOriginalBitmapSize=" + this.f7674f + ", totalTransformedBitmapSize=" + this.f7675g + ", averageOriginalBitmapSize=" + this.i + ", averageTransformedBitmapSize=" + this.f7677j + ", originalBitmapCount=" + this.f7679l + ", transformedBitmapCount=" + this.f7680m + ", timeStamp=" + this.f7681n + '}';
    }
}
