package K;

import F0.x;
import android.os.Build;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import java.util.Objects;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final TextPaint f1358a;

    /* renamed from: b  reason: collision with root package name */
    public final TextDirectionHeuristic f1359b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1360c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1361d;

    public d(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i, int i4) {
        PrecomputedText.Params.Builder breakStrategy;
        PrecomputedText.Params.Builder hyphenationFrequency;
        PrecomputedText.Params.Builder textDirection;
        if (Build.VERSION.SDK_INT >= 29) {
            breakStrategy = x.i(textPaint).setBreakStrategy(i);
            hyphenationFrequency = breakStrategy.setHyphenationFrequency(i4);
            textDirection = hyphenationFrequency.setTextDirection(textDirectionHeuristic);
            textDirection.build();
        }
        this.f1358a = textPaint;
        this.f1359b = textDirectionHeuristic;
        this.f1360c = i;
        this.f1361d = i4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f1360c == dVar.f1360c && this.f1361d == dVar.f1361d) {
                TextPaint textPaint = this.f1358a;
                float textSize = textPaint.getTextSize();
                TextPaint textPaint2 = dVar.f1358a;
                return textSize == textPaint2.getTextSize() && textPaint.getTextScaleX() == textPaint2.getTextScaleX() && textPaint.getTextSkewX() == textPaint2.getTextSkewX() && textPaint.getLetterSpacing() == textPaint2.getLetterSpacing() && TextUtils.equals(textPaint.getFontFeatureSettings(), textPaint2.getFontFeatureSettings()) && textPaint.getFlags() == textPaint2.getFlags() && textPaint.getTextLocales().equals(textPaint2.getTextLocales()) && (textPaint.getTypeface() != null ? textPaint.getTypeface().equals(textPaint2.getTypeface()) : textPaint2.getTypeface() == null) && this.f1359b == dVar.f1359b;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        TextPaint textPaint = this.f1358a;
        return Objects.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocales(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), this.f1359b, Integer.valueOf(this.f1360c), Integer.valueOf(this.f1361d));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f1358a;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        sb.append(", textLocale=" + textPaint.getTextLocales());
        sb.append(", typeface=" + textPaint.getTypeface());
        sb.append(", variationSettings=" + textPaint.getFontVariationSettings());
        sb.append(", textDir=" + this.f1359b);
        sb.append(", breakStrategy=" + this.f1360c);
        sb.append(", hyphenationFrequency=" + this.f1361d);
        sb.append("}");
        return sb.toString();
    }

    public d(PrecomputedText.Params params) {
        TextPaint textPaint;
        TextDirectionHeuristic textDirection;
        int breakStrategy;
        int hyphenationFrequency;
        textPaint = params.getTextPaint();
        this.f1358a = textPaint;
        textDirection = params.getTextDirection();
        this.f1359b = textDirection;
        breakStrategy = params.getBreakStrategy();
        this.f1360c = breakStrategy;
        hyphenationFrequency = params.getHyphenationFrequency();
        this.f1361d = hyphenationFrequency;
    }
}
