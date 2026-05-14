package j3;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;
/* renamed from: j3.F  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0503F {

    /* renamed from: d  reason: collision with root package name */
    public static final Logger f7985d = Logger.getLogger(C0503F.class.getName());

    /* renamed from: e  reason: collision with root package name */
    public static final C0503F f7986e = new C0503F();

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentSkipListMap f7987a;

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentHashMap f7988b;

    /* renamed from: c  reason: collision with root package name */
    public final ConcurrentHashMap f7989c;

    public C0503F() {
        new ConcurrentSkipListMap();
        this.f7987a = new ConcurrentSkipListMap();
        this.f7988b = new ConcurrentHashMap();
        this.f7989c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
