.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/consent_sdk/zzw;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:LH2/g;

.field public final synthetic zzd:LH2/e;

.field public final synthetic zze:LH2/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzw;Landroid/app/Activity;LH2/g;LH2/e;LH2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzw;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzc:LH2/g;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzd:LH2/e;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zze:LH2/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zza:Lcom/google/android/gms/internal/consent_sdk/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzb:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzc:LH2/g;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zzd:LH2/e;

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzv;->zze:LH2/d;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/zzw;->zza(Lcom/google/android/gms/internal/consent_sdk/zzw;Landroid/app/Activity;LH2/g;LH2/e;LH2/d;)V

    return-void
.end method
