package v0;

import android.database.sqlite.SQLiteProgram;
import java.io.Closeable;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import z0.InterfaceC1002c;
/* renamed from: v0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0941i implements InterfaceC1002c, Closeable {

    /* renamed from: n  reason: collision with root package name */
    public static final TreeMap f11141n = new TreeMap();

    /* renamed from: a  reason: collision with root package name */
    public volatile String f11142a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f11143b;

    /* renamed from: c  reason: collision with root package name */
    public final double[] f11144c;

    /* renamed from: d  reason: collision with root package name */
    public final String[] f11145d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[][] f11146e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f11147f;

    /* renamed from: l  reason: collision with root package name */
    public final int f11148l;

    /* renamed from: m  reason: collision with root package name */
    public int f11149m;

    public C0941i(int i) {
        this.f11148l = i;
        int i4 = i + 1;
        this.f11147f = new int[i4];
        this.f11143b = new long[i4];
        this.f11144c = new double[i4];
        this.f11145d = new String[i4];
        this.f11146e = new byte[i4];
    }

    public static C0941i e(int i, String str) {
        TreeMap treeMap = f11141n;
        synchronized (treeMap) {
            try {
                Map.Entry ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
                if (ceilingEntry == null) {
                    C0941i c0941i = new C0941i(i);
                    c0941i.f11142a = str;
                    c0941i.f11149m = i;
                    return c0941i;
                }
                treeMap.remove(ceilingEntry.getKey());
                C0941i c0941i2 = (C0941i) ceilingEntry.getValue();
                c0941i2.f11142a = str;
                c0941i2.f11149m = i;
                return c0941i2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // z0.InterfaceC1002c
    public final void b(A0.b bVar) {
        for (int i = 1; i <= this.f11149m; i++) {
            int i4 = this.f11147f[i];
            if (i4 == 1) {
                bVar.f(i);
            } else if (i4 == 2) {
                bVar.e(i, this.f11143b[i]);
            } else if (i4 == 3) {
                ((SQLiteProgram) bVar.f6b).bindDouble(i, this.f11144c[i]);
            } else if (i4 == 4) {
                bVar.g(i, this.f11145d[i]);
            } else if (i4 == 5) {
                bVar.c(i, this.f11146e[i]);
            }
        }
    }

    @Override // z0.InterfaceC1002c
    public final String c() {
        return this.f11142a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final void f(int i, long j5) {
        this.f11147f[i] = 2;
        this.f11143b[i] = j5;
    }

    public final void g(int i) {
        this.f11147f[i] = 1;
    }

    public final void m(int i, String str) {
        this.f11147f[i] = 4;
        this.f11145d[i] = str;
    }

    public final void release() {
        TreeMap treeMap = f11141n;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f11148l), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }
}
