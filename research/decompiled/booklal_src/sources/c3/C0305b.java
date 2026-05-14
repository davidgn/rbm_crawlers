package c3;

import android.content.Context;
import android.util.SparseArray;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c3.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0305b {

    /* renamed from: d  reason: collision with root package name */
    public static SparseArray f4870d;

    /* renamed from: a  reason: collision with root package name */
    public final String f4871a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4872b;

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f4873c;

    public C0305b(String str, int i, HashMap hashMap) {
        this.f4871a = str;
        this.f4872b = i;
        this.f4873c = hashMap;
    }

    public static C0305b b(int i) {
        if (f4870d == null) {
            f4870d = new SparseArray();
            HashMap hashMap = new HashMap();
            hashMap.put("ag", "268");
            hashMap.put("ai", "264");
            hashMap.put("as", "684");
            hashMap.put("bb", "246");
            hashMap.put("bm", "441");
            hashMap.put("bs", "242");
            hashMap.put("ca", "204/226/236/249/250/289/306/343/365/403/416/418/431/437/438/450/506/514/519/579/581/587/600/601/604/613/639/647/705/709/769/778/780/782/807/819/825/867/873/902/905/");
            hashMap.put("dm", "767");
            hashMap.put("do", "809/829/849");
            hashMap.put("gd", "473");
            hashMap.put("gu", "671");
            hashMap.put("jm", "876");
            hashMap.put("kn", "869");
            hashMap.put("ky", "345");
            hashMap.put("lc", "758");
            hashMap.put("mp", "670");
            hashMap.put("ms", "664");
            hashMap.put("pr", "787");
            hashMap.put("sx", "721");
            hashMap.put("tc", "649");
            hashMap.put("tt", "868");
            hashMap.put("vc", "784");
            hashMap.put("vg", "284");
            hashMap.put("vi", "340");
            f4870d.put(1, new C0305b("us", 3, hashMap));
            HashMap hashMap2 = new HashMap();
            hashMap2.put("gg", "1481");
            hashMap2.put("im", "1624");
            hashMap2.put("je", "1534");
            f4870d.put(44, new C0305b("gb", 4, hashMap2));
            HashMap hashMap3 = new HashMap();
            hashMap3.put("ax", "18");
            f4870d.put(358, new C0305b("fi", 2, hashMap3));
            HashMap hashMap4 = new HashMap();
            hashMap4.put("kz", "6/7");
            f4870d.put(7, new C0305b("ru", 1, hashMap4));
        }
        return (C0305b) f4870d.get(i);
    }

    public final C0304a a(Context context, o oVar, String str) {
        String str2 = this.f4871a;
        for (Map.Entry entry : this.f4873c.entrySet()) {
            if (((String) entry.getValue()).contains(str)) {
                str2 = (String) entry.getKey();
            }
        }
        return C0304a.f(context, oVar, str2);
    }
}
