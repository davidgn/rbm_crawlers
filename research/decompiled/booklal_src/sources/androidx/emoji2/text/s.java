package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import b0.C0277a;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class s extends ReplacementSpan {

    /* renamed from: b  reason: collision with root package name */
    public final l f4118b;

    /* renamed from: a  reason: collision with root package name */
    public final Paint.FontMetricsInt f4117a = new Paint.FontMetricsInt();

    /* renamed from: c  reason: collision with root package name */
    public float f4119c = 1.0f;

    public s(l lVar) {
        L4.l.k(lVar, "metadata cannot be null");
        this.f4118b = lVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i4, float f5, int i5, int i6, int i7, Paint paint) {
        j.a().getClass();
        l lVar = this.f4118b;
        R0.i iVar = lVar.f4094b;
        Typeface typeface = paint.getTypeface();
        paint.setTypeface((Typeface) iVar.f2401d);
        int i8 = lVar.f4093a * 2;
        canvas.drawText((char[]) iVar.f2399b, i8, 2, f5, i6, paint);
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i4, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f4117a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        l lVar = this.f4118b;
        C0277a c5 = lVar.c();
        int a5 = c5.a(14);
        this.f4119c = abs / (a5 != 0 ? ((ByteBuffer) c5.f1803d).getShort(a5 + c5.f1800a) : (short) 0);
        C0277a c6 = lVar.c();
        int a6 = c6.a(14);
        if (a6 != 0) {
            ((ByteBuffer) c6.f1803d).getShort(a6 + c6.f1800a);
        }
        C0277a c7 = lVar.c();
        int a7 = c7.a(12);
        short s5 = (short) ((a7 != 0 ? ((ByteBuffer) c7.f1803d).getShort(a7 + c7.f1800a) : (short) 0) * this.f4119c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s5;
    }
}
