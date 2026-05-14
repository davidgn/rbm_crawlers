package y1;

import android.os.SystemClock;
/* renamed from: y1.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0990g {

    /* renamed from: a  reason: collision with root package name */
    public static final double f11540a = 1.0d / Math.pow(10.0d, 6.0d);

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f11541b = 0;

    public static double a(long j5) {
        return (SystemClock.elapsedRealtimeNanos() - j5) * f11540a;
    }
}
