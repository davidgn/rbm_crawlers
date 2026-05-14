package s2;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public CharSequence f10201a;

    /* renamed from: b  reason: collision with root package name */
    public final TextPaint f10202b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10203c;

    /* renamed from: d  reason: collision with root package name */
    public int f10204d;

    /* renamed from: j  reason: collision with root package name */
    public boolean f10209j;

    /* renamed from: e  reason: collision with root package name */
    public Layout.Alignment f10205e = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: f  reason: collision with root package name */
    public int f10206f = Integer.MAX_VALUE;

    /* renamed from: g  reason: collision with root package name */
    public float f10207g = 1.0f;

    /* renamed from: h  reason: collision with root package name */
    public int f10208h = 1;
    public boolean i = true;

    /* renamed from: k  reason: collision with root package name */
    public TextUtils.TruncateAt f10210k = null;

    public v(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f10201a = charSequence;
        this.f10202b = textPaint;
        this.f10203c = i;
        this.f10204d = charSequence.length();
    }

    public final StaticLayout a() {
        if (this.f10201a == null) {
            this.f10201a = "";
        }
        int max = Math.max(0, this.f10203c);
        CharSequence charSequence = this.f10201a;
        int i = this.f10206f;
        TextPaint textPaint = this.f10202b;
        if (i == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.f10210k);
        }
        int min = Math.min(charSequence.length(), this.f10204d);
        this.f10204d = min;
        if (this.f10209j && this.f10206f == 1) {
            this.f10205e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.f10205e);
        obtain.setIncludePad(this.i);
        obtain.setTextDirection(this.f10209j ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f10210k;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f10206f);
        float f5 = this.f10207g;
        if (f5 != 1.0f) {
            obtain.setLineSpacing(0.0f, f5);
        }
        if (this.f10206f > 1) {
            obtain.setHyphenationFrequency(this.f10208h);
        }
        return obtain.build();
    }
}
