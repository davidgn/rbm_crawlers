package l;

import android.widget.AbsListView;
import java.lang.reflect.Field;
/* renamed from: l.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0594p0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Field f8605a;

    static {
        Field field = null;
        try {
            field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            field.setAccessible(true);
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
        f8605a = field;
    }
}
