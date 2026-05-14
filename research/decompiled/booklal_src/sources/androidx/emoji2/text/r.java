package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class r extends SpannableStringBuilder {

    /* renamed from: a  reason: collision with root package name */
    public final Class f4115a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f4116b;

    public r(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f4116b = new ArrayList();
        L4.l.k(cls, "watcherClass cannot be null");
        this.f4115a = cls;
    }

    public final void a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4116b;
            if (i >= arrayList.size()) {
                return;
            }
            ((q) arrayList.get(i)).f4114b.incrementAndGet();
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    public final void b() {
        e();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4116b;
            if (i >= arrayList.size()) {
                return;
            }
            ((q) arrayList.get(i)).onTextChanged(this, 0, length(), length());
            i++;
        }
    }

    public final q c(Object obj) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4116b;
            if (i >= arrayList.size()) {
                return null;
            }
            q qVar = (q) arrayList.get(i);
            if (qVar.f4113a == obj) {
                return qVar;
            }
            i++;
        }
    }

    public final boolean d(Object obj) {
        if (obj != null) {
            if (this.f4115a == obj.getClass()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i, int i4) {
        super.delete(i, i4);
        return this;
    }

    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f4116b;
            if (i >= arrayList.size()) {
                return;
            }
            ((q) arrayList.get(i)).f4114b.decrementAndGet();
            i++;
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        q c5;
        if (d(obj) && (c5 = c(obj)) != null) {
            obj = c5;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        q c5;
        if (d(obj) && (c5 = c(obj)) != null) {
            obj = c5;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        q c5;
        if (d(obj) && (c5 = c(obj)) != null) {
            obj = c5;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i, int i4, Class cls) {
        if (this.f4115a == cls) {
            q[] qVarArr = (q[]) super.getSpans(i, i4, q.class);
            Object[] objArr = (Object[]) Array.newInstance(cls, qVarArr.length);
            for (int i5 = 0; i5 < qVarArr.length; i5++) {
                objArr[i5] = qVarArr[i5].f4113a;
            }
            return objArr;
        }
        return super.getSpans(i, i4, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i, int i4, Class cls) {
        return super.nextSpanTransition(i, i4, (cls == null || this.f4115a == cls) ? q.class : q.class);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        q qVar;
        if (d(obj)) {
            qVar = c(obj);
            if (qVar != null) {
                obj = qVar;
            }
        } else {
            qVar = null;
        }
        super.removeSpan(obj);
        if (qVar != null) {
            this.f4116b.remove(qVar);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i4, CharSequence charSequence) {
        replace(i, i4, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i, int i4, int i5) {
        if (d(obj)) {
            q qVar = new q(obj);
            this.f4116b.add(qVar);
            obj = qVar;
        }
        super.setSpan(obj, i, i4, i5);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i, int i4) {
        return new r(this.f4115a, this, i, i4);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i, int i4) {
        super.delete(i, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i4, CharSequence charSequence, int i5, int i6) {
        replace(i, i4, charSequence, i5, i6);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i, CharSequence charSequence, int i4, int i5) {
        super.insert(i, charSequence, i4, i5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i, int i4, CharSequence charSequence) {
        a();
        super.replace(i, i4, charSequence);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i, CharSequence charSequence, int i4, int i5) {
        super.insert(i, charSequence, i4, i5);
        return this;
    }

    public r(Class cls, r rVar, int i, int i4) {
        super(rVar, i, i4);
        this.f4116b = new ArrayList();
        L4.l.k(cls, "watcherClass cannot be null");
        this.f4115a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c5) {
        super.append(c5);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i, int i4, CharSequence charSequence, int i5, int i6) {
        a();
        super.replace(i, i4, charSequence, i5, i6);
        e();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i, int i4) {
        super.append(charSequence, i, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i, int i4) {
        super.append(charSequence, i, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i4) {
        super.append(charSequence, i, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }
}
