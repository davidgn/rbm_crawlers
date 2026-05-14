.class public final synthetic LY0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    sget p1, Lcom/booklal/booklal/BookAdditionSuccessful;->o:I

    const-string p1, "Ads"

    const-string v0, "Config fetch failed. Skipping ad."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
