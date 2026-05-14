.class public final synthetic LD/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:LD/b;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(LD/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD/n;->a:LD/b;

    iput p2, p0, LD/n;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LD/n;->a:LD/b;

    iget v1, p0, LD/n;->b:I

    invoke-virtual {v0, v1}, LD/b;->d(I)V

    return-void
.end method
