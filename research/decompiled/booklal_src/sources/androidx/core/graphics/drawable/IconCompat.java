package androidx.core.graphics.drawable;

import F.c;
import F.e;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k  reason: collision with root package name */
    public static final PorterDuff.Mode f4000k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    public int f4001a;

    /* renamed from: b  reason: collision with root package name */
    public Object f4002b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f4003c;

    /* renamed from: d  reason: collision with root package name */
    public Parcelable f4004d;

    /* renamed from: e  reason: collision with root package name */
    public int f4005e;

    /* renamed from: f  reason: collision with root package name */
    public int f4006f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f4007g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f4008h;
    public String i;

    /* renamed from: j  reason: collision with root package name */
    public String f4009j;

    public IconCompat() {
        this.f4001a = -1;
        this.f4003c = null;
        this.f4004d = null;
        this.f4005e = 0;
        this.f4006f = 0;
        this.f4007g = null;
        this.f4008h = f4000k;
        this.i = null;
    }

    public static IconCompat a(int i) {
        if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.f4005e = i;
            iconCompat.f4002b = "";
            iconCompat.f4009j = "";
            return iconCompat;
        }
        throw new IllegalArgumentException("Drawable resource ID must not be 0");
    }

    public final int b() {
        int i = this.f4001a;
        if (i != -1) {
            if (i == 2) {
                return this.f4005e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        int i4 = Build.VERSION.SDK_INT;
        Object obj = this.f4002b;
        if (i4 >= 28) {
            return e.a(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e5) {
            Log.e("IconCompat", "Unable to get icon resource", e5);
            return 0;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon resource", e6);
            return 0;
        } catch (InvocationTargetException e7) {
            Log.e("IconCompat", "Unable to get icon resource", e7);
            return 0;
        }
    }

    public final int c() {
        int i = this.f4001a;
        if (i == -1) {
            int i4 = Build.VERSION.SDK_INT;
            Object obj = this.f4002b;
            if (i4 >= 28) {
                return e.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e5) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e5);
                return -1;
            } catch (NoSuchMethodException e6) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e6);
                return -1;
            } catch (InvocationTargetException e7) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e7);
                return -1;
            }
        }
        return i;
    }

    public final Uri d() {
        int i = this.f4001a;
        if (i == -1) {
            return c.a(this.f4002b);
        }
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.f4002b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public final String toString() {
        String str;
        if (this.f4001a == -1) {
            return String.valueOf(this.f4002b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f4001a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f4001a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f4002b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f4002b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f4009j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(b())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f4005e);
                if (this.f4006f != 0) {
                    sb.append(" off=");
                    sb.append(this.f4006f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f4002b);
                break;
        }
        if (this.f4007g != null) {
            sb.append(" tint=");
            sb.append(this.f4007g);
        }
        if (this.f4008h != f4000k) {
            sb.append(" mode=");
            sb.append(this.f4008h);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i) {
        this.f4003c = null;
        this.f4004d = null;
        this.f4005e = 0;
        this.f4006f = 0;
        this.f4007g = null;
        this.f4008h = f4000k;
        this.i = null;
        this.f4001a = i;
    }
}
