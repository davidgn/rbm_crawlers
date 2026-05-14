package F;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public abstract class c {
    public static Uri a(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return e.d(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e5) {
            Log.e("IconCompat", "Unable to get icon uri", e5);
            return null;
        } catch (NoSuchMethodException e6) {
            Log.e("IconCompat", "Unable to get icon uri", e6);
            return null;
        } catch (InvocationTargetException e7) {
            Log.e("IconCompat", "Unable to get icon uri", e7);
            return null;
        }
    }

    public static Drawable b(Icon icon, Context context) {
        return icon.loadDrawable(context);
    }

    public static Icon c(IconCompat iconCompat, Context context) {
        Icon createWithBitmap;
        int i = iconCompat.f4001a;
        String str = null;
        r1 = null;
        InputStream openInputStream = null;
        str = null;
        str = null;
        switch (i) {
            case -1:
                return (Icon) iconCompat.f4002b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f4002b);
                break;
            case 2:
                if (i == -1) {
                    int i4 = Build.VERSION.SDK_INT;
                    Object obj = iconCompat.f4002b;
                    if (i4 >= 28) {
                        str = e.b(obj);
                    } else {
                        try {
                            str = (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
                        } catch (IllegalAccessException e5) {
                            Log.e("IconCompat", "Unable to get icon package", e5);
                        } catch (NoSuchMethodException e6) {
                            Log.e("IconCompat", "Unable to get icon package", e6);
                        } catch (InvocationTargetException e7) {
                            Log.e("IconCompat", "Unable to get icon package", e7);
                        }
                    }
                } else if (i != 2) {
                    throw new IllegalStateException("called getResPackage() on " + iconCompat);
                } else {
                    String str2 = iconCompat.f4009j;
                    str = (str2 == null || TextUtils.isEmpty(str2)) ? ((String) iconCompat.f4002b).split(":", -1)[0] : iconCompat.f4009j;
                }
                createWithBitmap = Icon.createWithResource(str, iconCompat.f4005e);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) iconCompat.f4002b, iconCompat.f4005e, iconCompat.f4006f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) iconCompat.f4002b);
                break;
            case 5:
                createWithBitmap = d.b((Bitmap) iconCompat.f4002b);
                break;
            case 6:
                if (Build.VERSION.SDK_INT >= 30) {
                    createWithBitmap = f.a(iconCompat.d());
                    break;
                } else if (context == null) {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.d());
                } else {
                    Uri d2 = iconCompat.d();
                    String scheme = d2.getScheme();
                    if (FirebaseAnalytics.Param.CONTENT.equals(scheme) || "file".equals(scheme)) {
                        try {
                            openInputStream = context.getContentResolver().openInputStream(d2);
                        } catch (Exception e8) {
                            Log.w("IconCompat", "Unable to load image from URI: " + d2, e8);
                        }
                    } else {
                        try {
                            openInputStream = new FileInputStream(new File((String) iconCompat.f4002b));
                        } catch (FileNotFoundException e9) {
                            Log.w("IconCompat", "Unable to load image from path: " + d2, e9);
                        }
                    }
                    if (openInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.d());
                    }
                    createWithBitmap = d.b(BitmapFactory.decodeStream(openInputStream));
                    break;
                }
                break;
        }
        ColorStateList colorStateList = iconCompat.f4007g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = iconCompat.f4008h;
        if (mode != IconCompat.f4000k) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }
}
