package v0;

import android.content.Context;
import android.util.Log;
import e1.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import w0.AbstractC0951a;
import z0.InterfaceC1000a;
/* renamed from: v0.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0939g {

    /* renamed from: a  reason: collision with root package name */
    public final String f11123a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f11124b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList f11125c;

    /* renamed from: d  reason: collision with root package name */
    public Executor f11126d;

    /* renamed from: e  reason: collision with root package name */
    public Executor f11127e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC1000a f11128f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11129g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f11130h = true;
    public boolean i;

    /* renamed from: j  reason: collision with root package name */
    public final x f11131j;

    /* renamed from: k  reason: collision with root package name */
    public HashSet f11132k;

    /* JADX WARN: Type inference failed for: r1v2, types: [e1.x, java.lang.Object] */
    public C0939g(Context context, String str) {
        this.f11124b = context;
        this.f11123a = str;
        ?? obj = new Object();
        obj.f7175a = new HashMap();
        this.f11131j = obj;
    }

    public final void a(AbstractC0951a... abstractC0951aArr) {
        if (this.f11132k == null) {
            this.f11132k = new HashSet();
        }
        for (AbstractC0951a abstractC0951a : abstractC0951aArr) {
            this.f11132k.add(Integer.valueOf(abstractC0951a.f11200a));
            this.f11132k.add(Integer.valueOf(abstractC0951a.f11201b));
        }
        x xVar = this.f11131j;
        xVar.getClass();
        for (AbstractC0951a abstractC0951a2 : abstractC0951aArr) {
            int i = abstractC0951a2.f11200a;
            HashMap hashMap = xVar.f7175a;
            TreeMap treeMap = (TreeMap) hashMap.get(Integer.valueOf(i));
            if (treeMap == null) {
                treeMap = new TreeMap();
                hashMap.put(Integer.valueOf(i), treeMap);
            }
            int i4 = abstractC0951a2.f11201b;
            AbstractC0951a abstractC0951a3 = (AbstractC0951a) treeMap.get(Integer.valueOf(i4));
            if (abstractC0951a3 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC0951a3 + " with " + abstractC0951a2);
            }
            treeMap.put(Integer.valueOf(i4), abstractC0951a2);
        }
    }
}
