package l;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import java.lang.reflect.Method;
/* renamed from: l.m0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0588m0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Method f8589a;

    /* renamed from: b  reason: collision with root package name */
    public static final Method f8590b;

    /* renamed from: c  reason: collision with root package name */
    public static final Method f8591c;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f8592d;

    static {
        try {
            Class cls = Integer.TYPE;
            Class cls2 = Boolean.TYPE;
            Class cls3 = Float.TYPE;
            Method declaredMethod = AbsListView.class.getDeclaredMethod("positionSelector", cls, View.class, cls2, cls3, cls3);
            f8589a = declaredMethod;
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = AdapterView.class.getDeclaredMethod("setSelectedPositionInt", cls);
            f8590b = declaredMethod2;
            declaredMethod2.setAccessible(true);
            Method declaredMethod3 = AdapterView.class.getDeclaredMethod("setNextSelectedPositionInt", cls);
            f8591c = declaredMethod3;
            declaredMethod3.setAccessible(true);
            f8592d = true;
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
        }
    }
}
