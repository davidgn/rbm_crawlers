.class public final LB2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:LB2/q;


# direct methods
.method public constructor <init>(LB2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB2/o;->a:LB2/q;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    iget-object v0, p0, LB2/o;->a:LB2/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, LB2/q;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LB2/q;->l:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LB2/q;->g(Z)V

    return-void
.end method
