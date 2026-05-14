.class public final Lt4/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/T;


# instance fields
.field public final a:Lt4/j0;


# direct methods
.method public constructor <init>(Lt4/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/S;->a:Lt4/j0;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lt4/j0;
    .locals 1

    iget-object v0, p0, Lt4/S;->a:Lt4/j0;

    return-object v0
.end method
