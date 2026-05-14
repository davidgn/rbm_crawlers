package androidx.emoji2.text;

import android.text.TextPaint;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    public static final ThreadLocal f4072b = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    public final TextPaint f4073a;

    public d() {
        TextPaint textPaint = new TextPaint();
        this.f4073a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
