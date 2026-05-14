package com.google.firebase.inappmessaging.internal;

import z3.AbstractC1038p;
/* loaded from: classes2.dex */
public class Schedulers {
    private final AbstractC1038p computeScheduler;
    private final AbstractC1038p ioScheduler;
    private final AbstractC1038p mainThreadScheduler;

    public Schedulers(AbstractC1038p abstractC1038p, AbstractC1038p abstractC1038p2, AbstractC1038p abstractC1038p3) {
        this.ioScheduler = abstractC1038p;
        this.computeScheduler = abstractC1038p2;
        this.mainThreadScheduler = abstractC1038p3;
    }

    public AbstractC1038p computation() {
        return this.computeScheduler;
    }

    public AbstractC1038p io() {
        return this.ioScheduler;
    }

    public AbstractC1038p mainThread() {
        return this.mainThreadScheduler;
    }
}
