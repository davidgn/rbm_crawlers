.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/j;


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:LH2/b;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;LH2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zza:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadSuccess(LH2/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbo;->zza:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, LH2/c;->show(Landroid/app/Activity;LH2/b;)V

    return-void
.end method
