package F0;

import android.text.PrecomputedText;
import android.text.TextPaint;
/* loaded from: classes.dex */
public abstract /* synthetic */ class x {
    public static /* synthetic */ PrecomputedText.Params.Builder i(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    public static /* bridge */ /* synthetic */ boolean y(CharSequence charSequence) {
        return charSequence instanceof PrecomputedText;
    }
}
