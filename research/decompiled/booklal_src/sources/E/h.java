package E;

import L4.l;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class h extends L4.d {
    public static Class i = null;

    /* renamed from: j  reason: collision with root package name */
    public static Constructor f712j = null;

    /* renamed from: k  reason: collision with root package name */
    public static Method f713k = null;

    /* renamed from: l  reason: collision with root package name */
    public static Method f714l = null;

    /* renamed from: m  reason: collision with root package name */
    public static boolean f715m = false;

    /* renamed from: b  reason: collision with root package name */
    public final Class f716b;

    /* renamed from: c  reason: collision with root package name */
    public final Constructor f717c;

    /* renamed from: d  reason: collision with root package name */
    public final Method f718d;

    /* renamed from: e  reason: collision with root package name */
    public final Method f719e;

    /* renamed from: f  reason: collision with root package name */
    public final Method f720f;

    /* renamed from: g  reason: collision with root package name */
    public final Method f721g;

    /* renamed from: h  reason: collision with root package name */
    public final Method f722h;

    public h() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            method2 = Q(cls2);
            Class cls3 = Integer.TYPE;
            method3 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method4 = cls2.getMethod("freeze", null);
            method5 = cls2.getMethod("abortCreation", null);
            method = R(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e5) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e5.getClass().getName()), e5);
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f716b = cls;
        this.f717c = constructor;
        this.f718d = method2;
        this.f719e = method3;
        this.f720f = method4;
        this.f721g = method5;
        this.f722h = method;
    }

    public static boolean K(Object obj, String str, int i4, boolean z4) {
        N();
        try {
            return ((Boolean) f713k.invoke(obj, str, Integer.valueOf(i4), Boolean.valueOf(z4))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e5) {
            throw new RuntimeException(e5);
        }
    }

    public static void N() {
        Method method;
        Class<?> cls;
        Method method2;
        if (f715m) {
            return;
        }
        f715m = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e5) {
            Log.e("TypefaceCompatApi21Impl", e5.getClass().getName(), e5);
            method = null;
            cls = null;
            method2 = null;
        }
        f712j = constructor;
        i = cls;
        f713k = method2;
        f714l = method;
    }

    public static Method Q(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void I(Object obj) {
        try {
            this.f721g.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean J(Context context, Object obj, String str, int i4, int i5, int i6, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f718d.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface L(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f716b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f722h.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean M(Object obj) {
        try {
            return ((Boolean) this.f720f.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean O() {
        Method method = this.f718d;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return method != null;
    }

    public final Object P() {
        try {
            return this.f717c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method R(Class cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // L4.d
    public final Typeface i(Context context, D.f fVar, Resources resources, int i4) {
        D.g[] gVarArr;
        D.g[] gVarArr2;
        if (O()) {
            Object P5 = P();
            if (P5 == null) {
                return null;
            }
            for (D.g gVar : fVar.f596a) {
                if (!J(context, P5, gVar.f597a, gVar.f601e, gVar.f598b, gVar.f599c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f600d))) {
                    I(P5);
                    return null;
                }
            }
            if (M(P5)) {
                return L(P5);
            }
            return null;
        }
        N();
        try {
            Object newInstance = f712j.newInstance(null);
            for (D.g gVar2 : fVar.f596a) {
                File u5 = l.u(context);
                if (u5 == null) {
                    return null;
                }
                try {
                    if (l.o(u5, resources, gVar2.f602f) && K(newInstance, u5.getPath(), gVar2.f598b, gVar2.f599c)) {
                        u5.delete();
                    }
                } catch (RuntimeException unused) {
                } catch (Throwable th) {
                    u5.delete();
                    throw th;
                }
                u5.delete();
                return null;
            }
            N();
            try {
                Object newInstance2 = Array.newInstance(i, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f714l.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e5) {
                throw new RuntimeException(e5);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }

    @Override // L4.d
    public final Typeface j(Context context, J.h[] hVarArr, int i4) {
        Typeface L5;
        boolean z4;
        if (hVarArr.length < 1) {
            return null;
        }
        if (!O()) {
            J.h o = o(i4, hVarArr);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(o.f1164a, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(o.f1166c).setItalic(o.f1167d).build();
                openFileDescriptor.close();
                return build;
            } catch (IOException unused) {
                return null;
            }
        }
        HashMap hashMap = new HashMap();
        for (J.h hVar : hVarArr) {
            if (hVar.f1168e == 0) {
                Uri uri = hVar.f1164a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, l.w(context, uri));
                }
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        Object P5 = P();
        if (P5 == null) {
            return null;
        }
        int length = hVarArr.length;
        int i5 = 0;
        boolean z5 = false;
        while (i5 < length) {
            J.h hVar2 = hVarArr[i5];
            ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(hVar2.f1164a);
            if (byteBuffer != null) {
                try {
                    z4 = ((Boolean) this.f719e.invoke(P5, byteBuffer, Integer.valueOf(hVar2.f1165b), null, Integer.valueOf(hVar2.f1166c), Integer.valueOf(hVar2.f1167d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                    z4 = false;
                }
                if (!z4) {
                    I(P5);
                    return null;
                }
                z5 = true;
            }
            i5++;
            z5 = z5;
        }
        if (!z5) {
            I(P5);
            return null;
        } else if (M(P5) && (L5 = L(P5)) != null) {
            return Typeface.create(L5, i4);
        } else {
            return null;
        }
    }

    @Override // L4.d
    public final Typeface k(Context context, Resources resources, int i4, String str, int i5) {
        if (O()) {
            Object P5 = P();
            if (P5 == null) {
                return null;
            }
            if (!J(context, P5, str, 0, -1, -1, null)) {
                I(P5);
                return null;
            } else if (M(P5)) {
                return L(P5);
            } else {
                return null;
            }
        }
        return super.k(context, resources, i4, str, i5);
    }
}
