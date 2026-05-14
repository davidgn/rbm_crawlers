.class final Lcom/google/android/gms/internal/consent_sdk/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/j;
.implements LH2/i;


# instance fields
.field private final zza:LH2/j;

.field private final zzb:LH2/i;


# direct methods
.method public synthetic constructor <init>(LH2/j;LH2/i;Lcom/google/android/gms/internal/consent_sdk/zzbd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzbc;->zza:LH2/j;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzbc;->zzb:LH2/i;

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(LH2/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbc;->zzb:LH2/i;

    invoke-interface {v0, p1}, LH2/i;->onConsentFormLoadFailure(LH2/h;)V

    return-void
.end method

.method public final onConsentFormLoadSuccess(LH2/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzbc;->zza:LH2/j;

    invoke-interface {v0, p1}, LH2/j;->onConsentFormLoadSuccess(LH2/c;)V

    return-void
.end method
