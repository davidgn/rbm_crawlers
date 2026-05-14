package J2;

import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1194a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1195b;

    /* renamed from: c  reason: collision with root package name */
    public long f1196c;

    public /* synthetic */ j(int i) {
        this.f1194a = i;
    }

    public long a(TimeUnit timeUnit) {
        long j5;
        if (this.f1195b) {
            int i = f.f1191a;
            j5 = System.nanoTime() - this.f1196c;
        } else {
            j5 = 0;
        }
        return timeUnit.convert(j5, TimeUnit.NANOSECONDS);
    }

    public void b() {
        Z2.l.m(!this.f1195b, "This stopwatch is already running.");
        this.f1195b = true;
        int i = f.f1191a;
        this.f1196c = System.nanoTime();
    }

    public String toString() {
        long j5;
        String str;
        switch (this.f1194a) {
            case 0:
                if (this.f1195b) {
                    int i = f.f1191a;
                    j5 = System.nanoTime() - this.f1196c;
                } else {
                    j5 = 0;
                }
                TimeUnit timeUnit = TimeUnit.DAYS;
                TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
                if (timeUnit.convert(j5, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.HOURS;
                    if (timeUnit.convert(j5, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MINUTES;
                        if (timeUnit.convert(j5, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.SECONDS;
                            if (timeUnit.convert(j5, timeUnit2) <= 0) {
                                timeUnit = TimeUnit.MILLISECONDS;
                                if (timeUnit.convert(j5, timeUnit2) <= 0) {
                                    timeUnit = TimeUnit.MICROSECONDS;
                                    if (timeUnit.convert(j5, timeUnit2) <= 0) {
                                        timeUnit = timeUnit2;
                                    }
                                }
                            }
                        }
                    }
                }
                double convert = j5 / timeUnit2.convert(1L, timeUnit);
                int i4 = f.f1191a;
                String format = String.format(Locale.ROOT, "%.4g", Double.valueOf(convert));
                switch (i.f1193a[timeUnit.ordinal()]) {
                    case 1:
                        str = "ns";
                        break;
                    case 2:
                        str = "μs";
                        break;
                    case 3:
                        str = "ms";
                        break;
                    case 4:
                        str = "s";
                        break;
                    case 5:
                        str = "min";
                        break;
                    case 6:
                        str = "h";
                        break;
                    case 7:
                        str = "d";
                        break;
                    default:
                        throw new AssertionError();
                }
                StringBuilder sb = new StringBuilder(str.length() + format.length() + 1);
                sb.append(format);
                sb.append(" ");
                sb.append(str);
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public j(long j5, boolean z4) {
        this.f1194a = 2;
        this.f1195b = z4;
        this.f1196c = j5;
    }
}
