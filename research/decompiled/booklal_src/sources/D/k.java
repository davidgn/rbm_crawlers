package D;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final ColorStateList f607a;

    /* renamed from: b  reason: collision with root package name */
    public final Configuration f608b;

    /* renamed from: c  reason: collision with root package name */
    public final int f609c;

    public k(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f607a = colorStateList;
        this.f608b = configuration;
        this.f609c = theme == null ? 0 : theme.hashCode();
    }
}
