package androidx.work;

import java.util.HashSet;
import s.AbstractC0824e;
/* loaded from: classes.dex */
public final class c {
    public static final c i;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4717b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4718c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4719d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f4720e;

    /* renamed from: a  reason: collision with root package name */
    public int f4716a = 1;

    /* renamed from: f  reason: collision with root package name */
    public long f4721f = -1;

    /* renamed from: g  reason: collision with root package name */
    public long f4722g = -1;

    /* renamed from: h  reason: collision with root package name */
    public e f4723h = new e();

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.work.c, java.lang.Object] */
    static {
        e eVar = new e();
        ?? obj = new Object();
        obj.f4716a = 1;
        obj.f4721f = -1L;
        obj.f4722g = -1L;
        new HashSet();
        obj.f4717b = false;
        obj.f4718c = false;
        obj.f4716a = 1;
        obj.f4719d = false;
        obj.f4720e = false;
        obj.f4723h = eVar;
        obj.f4721f = -1L;
        obj.f4722g = -1L;
        i = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f4717b == cVar.f4717b && this.f4718c == cVar.f4718c && this.f4719d == cVar.f4719d && this.f4720e == cVar.f4720e && this.f4721f == cVar.f4721f && this.f4722g == cVar.f4722g && this.f4716a == cVar.f4716a) {
            return this.f4723h.equals(cVar.f4723h);
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.f4721f;
        long j6 = this.f4722g;
        return this.f4723h.f4726a.hashCode() + (((((((((((((AbstractC0824e.d(this.f4716a) * 31) + (this.f4717b ? 1 : 0)) * 31) + (this.f4718c ? 1 : 0)) * 31) + (this.f4719d ? 1 : 0)) * 31) + (this.f4720e ? 1 : 0)) * 31) + ((int) (j5 ^ (j5 >>> 32)))) * 31) + ((int) (j6 ^ (j6 >>> 32)))) * 31);
    }
}
