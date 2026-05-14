.class public final LF0/a;
.super LF0/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LF0/w;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LF0/w;->K(I)V

    new-instance v1, LF0/j;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LF0/j;-><init>(I)V

    invoke-virtual {p0, v1}, LF0/w;->H(LF0/r;)V

    new-instance v1, LF0/g;

    invoke-direct {v1}, LF0/r;-><init>()V

    invoke-virtual {p0, v1}, LF0/w;->H(LF0/r;)V

    new-instance v1, LF0/j;

    invoke-direct {v1, v0}, LF0/j;-><init>(I)V

    invoke-virtual {p0, v1}, LF0/w;->H(LF0/r;)V

    return-void
.end method
