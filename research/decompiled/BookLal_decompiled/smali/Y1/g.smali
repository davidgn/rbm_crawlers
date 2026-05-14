.class public final synthetic LY1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/b;


# instance fields
.field public final synthetic a:LY1/k;

.field public final synthetic b:LS1/j;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(LY1/k;LS1/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY1/g;->a:LY1/k;

    iput-object p2, p0, LY1/g;->b:LS1/j;

    iput p3, p0, LY1/g;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LY1/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, LY1/g;->a:LY1/k;

    iget-object v1, v1, LY1/k;->d:LY1/d;

    const/4 v2, 0x0

    iget-object v3, p0, LY1/g;->b:LS1/j;

    invoke-virtual {v1, v3, v0, v2}, LY1/d;->a(LS1/j;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method
