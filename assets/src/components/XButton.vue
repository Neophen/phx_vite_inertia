<script setup lang="ts" name="XButton">
const props = defineProps<{}>()
</script>

<template>
  <button
    type="button"
    class="rounded-md border border-primary-500 bg-white px-2 py-1 text-primary-500 hover:bg-primary-100"
  >
    <slot />
  </button>
</template>
