package e1;
/* loaded from: classes.dex */
public final class u implements Appendable {

    /* renamed from: a  reason: collision with root package name */
    public final Appendable f7167a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7168b = true;

    public u(Appendable appendable) {
        this.f7167a = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c5) {
        boolean z4 = this.f7168b;
        Appendable appendable = this.f7167a;
        if (z4) {
            this.f7168b = false;
            appendable.append("  ");
        }
        this.f7168b = c5 == '\n';
        appendable.append(c5);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i4) {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z4 = this.f7168b;
        Appendable appendable = this.f7167a;
        boolean z5 = false;
        if (z4) {
            this.f7168b = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i4 - 1) == '\n') {
            z5 = true;
        }
        this.f7168b = z5;
        appendable.append(charSequence, i, i4);
        return this;
    }
}
