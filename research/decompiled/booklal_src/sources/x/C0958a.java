package x;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import s.AbstractC0824e;
/* renamed from: x.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0958a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11255a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f11256b;

    /* renamed from: c  reason: collision with root package name */
    public int f11257c;

    /* renamed from: d  reason: collision with root package name */
    public float f11258d;

    /* renamed from: e  reason: collision with root package name */
    public String f11259e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11260f;

    /* renamed from: g  reason: collision with root package name */
    public int f11261g;

    public C0958a(C0958a c0958a, Object obj) {
        c0958a.getClass();
        this.f11256b = c0958a.f11256b;
        b(obj);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, x.a] */
    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), AbstractC0973p.f11461d);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        int i = 0;
        boolean z4 = false;
        Object obj = null;
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            int i5 = 1;
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 10) {
                str = obtainStyledAttributes.getString(index);
                z4 = true;
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                i = 6;
            } else {
                int i6 = 3;
                if (index == 3) {
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else {
                    i6 = 4;
                    if (index == 2) {
                        obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                    } else {
                        if (index == 7) {
                            obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                        } else if (index == 4) {
                            obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                        } else {
                            i6 = 5;
                            if (index == 5) {
                                obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                                i = 2;
                            } else {
                                if (index == 6) {
                                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                                } else if (index == 9) {
                                    obj = obtainStyledAttributes.getString(index);
                                } else {
                                    i5 = 8;
                                    if (index == 8) {
                                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                                        if (resourceId == -1) {
                                            resourceId = obtainStyledAttributes.getInt(index, -1);
                                        }
                                        obj = Integer.valueOf(resourceId);
                                    }
                                }
                                i = i5;
                            }
                        }
                        i = 7;
                    }
                }
                i = i6;
            }
        }
        if (str != null && obj != null) {
            ?? obj2 = new Object();
            obj2.f11256b = i;
            obj2.f11255a = z4;
            obj2.b(obj);
            hashMap.put(str, obj2);
        }
        obtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (AbstractC0824e.d(this.f11256b)) {
            case 0:
            case 7:
                this.f11257c = ((Integer) obj).intValue();
                return;
            case 1:
                this.f11258d = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.f11261g = ((Integer) obj).intValue();
                return;
            case 4:
                this.f11259e = (String) obj;
                return;
            case 5:
                this.f11260f = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.f11258d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
