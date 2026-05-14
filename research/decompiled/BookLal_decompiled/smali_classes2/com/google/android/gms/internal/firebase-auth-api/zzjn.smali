.class final Lcom/google/android/gms/internal/firebase-auth-api/zzjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzjc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    return-void
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/firebase-auth-api/zzjn;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvv;->zzb([B)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;-><init>([B[B)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    return-object v0
.end method
